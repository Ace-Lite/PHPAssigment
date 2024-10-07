class PHP_Manager {
    #max = 0;
    #page = 0;
    #last_page = 0;
    data = [];

    search = "";

    //#region Functions

        //  updatuje data s tím co se změnilo v kontejneru
        update(id, ref, value) {
            if (this.data[id] === undefined)
                return;

            if (this.data[id][ref] === undefined)
                return;

            this.data[id][ref] = value;
        };        

        //  kvalifikuje na základě search stringu zda předmět splňuje podmínky
        qualifies(search, select) {
            if (!search)
                return true;

            if (!select)
                return false;            

            let include_element = true;
            let ands = search.split("&&");

            ands.forEach(function(qual) {
                let trim = qual.trimStart().trimEnd();
                let ors = trim.split("||");
                var switch_n = false;

                ors.forEach(function(qual2) {
                    let trim2 = qual2.trimStart().trimEnd();
                    let prefix = trim2.substring(0, 1);
                    let target = trim2.substring(1);

                    switch (prefix)
                    {
                        case '@':
                            if (select[4].includes(target))
                                switch_n = true;
                            break;
                        case '#':
                            if (select[1].includes(target))
                                switch_n = true;
                            break;
                        case '$':
                            if (select[2].replace(/\D/g, '').includes(target))
                                switch_n = true;
                            break;
                        case '&':
                            if (select[5].includes(target))
                                switch_n = true;
                            break;                    
                        default:
                            if (select[0].includes(trim2))
                                switch_n = true;
                            break;
                    }
                });

                if (switch_n == false)
                {
                    include_element = false;
                    return;
                }
            });

            return include_element;
        }

        //  updatuje tabulku v index.php na základě všecho    
        filter(home) {
            //console.log(this.data);
            
            const offset = this.#page*this.#max;
            if (home)
            {
                this.#page = 0; 
                document.getElementById("currentPage").textContent = (this.#page+1)+'/?';
            }

            var html_output = "";
            var added_int = 0;
            var i = offset;

            while (added_int < this.#max && i < this.data.length)
            {    
                const select = this.data[i];
                ++i;

                if (!this.qualifies(this.search, select))
                    continue;

                var pos = select[6];

                html_output += `
                    <div id='product'>
                        <b id='Pozice'>    
                            ${i}         
                        </b>
                        
                        <div id='tableContents'>
                            Název:          <input id='Nazev'           oninput="table.update(${i-1}, 0, this.value);"        value='${select[0]}'>  </input>
                            Kód produktu:   <input id='Kod'             oninput="table.update(${i-1}, 1, this.value);"        value='${select[1]}'>  </input>
                            Cena:           <input id='Cena'            oninput="table.update(${i-1}, 2, this.value);"        value='${select[2]}'>  </input>
                            Značka:         <input id='Urceni'          oninput="table.update(${i-1}, 4, this.value);"        value='${select[4]}'>  </input>
                            Materiál:       <input id='Material'        oninput="table.update(${i-1}, 5, this.value);"        value='${select[5]}'>  </input>                            
                            Popis:          <textarea id='Popis'        oninput="table.update(${i-1}, 3, this.value);"        >${select[3]}</textarea>
                        </div>
                    </div>`;
                    
                ++added_int;
            }   
            document.getElementById("dataTable").innerHTML = html_output;
        };
        
        searchUpdate(search) {
            this.search = search;
            this.filter(true);
        };

        //  exportuje CSV soubor na základě search stringu a pořadí        
        csvExport() {
            var csv_content = "data:text/csv;charset=utf-8;";
            let qualify = this.qualifies;
            let search = this.search;

            this.data.forEach(function(row_array) {
                if (qualify(search, row_array))
                {
                    let row = row_array[0]+","+row_array[1]+","+row_array[2]+","+row_array[3]+","+row_array[4]+","+row_array[5];
                    csv_content += row + "\r\n";
                }
            });

            var encoded_uri = encodeURI(csv_content);
            window.open(encoded_uri);
        };

        sort(option) {
            switch(option) {
                // Řazení pozicí             
                case 1:
                    this.data.sort((a, b) => Number(a[6]) - Number(b[6]));
                    break;
                case 2:
                    this.data.sort((a, b) => Number(b[6]) - Number(a[6]));
                    break;

                // Řazení názvem produktu
                case 3:
                    this.data.sort((a, b) => a[4].localeCompare(b[4]));
                    break;
                case 4:
                    this.data.sort((a, b) => b[4].localeCompare(a[4]));
                    break;

                // Řazení cenou
                case 5:
                    this.data.sort((a, b) => Number(a[2].replace(/\D/g, '')) - Number(b[2].replace(/\D/g, '')));
                    break;
                case 6:
                    this.data.sort((a, b) => Number(b[2].replace(/\D/g, '')) - Number(a[2].replace(/\D/g, '')));
                    break;                    
            }

            this.filter();
        };

        //  navigátor
        
        prevPage() {
            if (this.#page > 0)
                --this.#page;

            document.getElementById("currentPage").textContent = (this.#page+1)+'/'+(this.#last_page+1);
            this.filter();
        };

        nextPage() {
            this.#last_page = (this.data.length/this.#max)-1;
            if (this.#page < this.#last_page)
                ++this.#page;
            else
                this.#page = this.#last_page;

            document.getElementById("currentPage").textContent = (this.#page+1)+'/'+(this.#last_page+1);            
            this.filter();
        };

    //#endregion

    constructor(lenghtTable, jsonImport) {
        this.#max = lenghtTable;
        this.data = Object.values(jsonImport);

        this.#last_page  = (this.data.length/this.#max)-1;

        document.getElementById("currentPage").textContent = 1+'/'+(this.#last_page+1);

        this.filter(true);
    };    
}

var table;