(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-d8e7d3d2"],{4138:function(t,A,a){t.exports=a.p+"static/img/show2.e831e7c2.png"},"6b8c":function(t,A,a){"use strict";a("ca56")},9406:function(t,A,a){"use strict";a.r(A);a("b0c0");var e=function(){var t=this,A=t._self._c;return A("div",[A("el-row",[A("el-carousel",{attrs:{interval:5e3,arrow:"always"}},[A("el-carousel-item",[A("img",{staticClass:"carousel-img",attrs:{src:a("badc")}})]),A("el-carousel-item",[A("img",{staticClass:"carousel-img",attrs:{src:a("acbf")}})]),A("el-carousel-item",[A("img",{staticClass:"carousel-img",attrs:{src:a("ff72")}})])],1)],1),A("el-row",{staticClass:"app-item-contain"},[A("h3",{staticClass:"index-title-h3"},[t._v("任务中心")]),A("div",[0!==t.taskList.length?A("el-collapse",{directives:[{name:"loading",rawName:"v-loading",value:t.taskLoading,expression:"taskLoading"}],attrs:{accordion:""}},t._l(t.taskList,(function(a){return A("el-collapse-item",{key:a.id,attrs:{title:a.title,name:a.id}},[A("table",{staticClass:"index-task-table"},t._l(a.paperItems,(function(a){return A("tr",{key:a.examPaperId},[A("td",{staticClass:"index-task-table-paper"},[t._v(" "+t._s(a.examPaperName)+" ")]),A("td",{attrs:{width:"70px"}},[null!==a.status?A("el-tag",{attrs:{type:t.statusTagFormatter(a.status),size:"mini"}},[t._v(" "+t._s(t.statusTextFormatter(a.status))+" ")]):t._e()],1),A("td",{attrs:{width:"80px"}},[null===a.status?A("router-link",{attrs:{target:"_blank",to:{path:"/do",query:{id:a.examPaperId}}}},[A("el-button",{attrs:{type:"text",size:"small"}},[t._v("开始答题")])],1):1===a.status?A("router-link",{attrs:{target:"_blank",to:{path:"/edit",query:{id:a.examPaperAnswerId}}}},[A("el-button",{attrs:{type:"text",size:"small"}},[t._v("批改试卷")])],1):2===a.status?A("router-link",{attrs:{target:"_blank",to:{path:"/read",query:{id:a.examPaperAnswerId}}}},[A("el-button",{attrs:{type:"text",size:"small"}},[t._v("查看试卷")])],1):t._e()],1)])})),0)])})),1):A("div",{staticClass:"empty"})],1)]),A("el-row",{staticClass:"app-item-contain"},[A("h3",{staticClass:"index-title-h3"},[t._v("固定试卷")]),A("div",t._l(t.fixedPaper,(function(e,s){return A("el-col",{key:s,attrs:{span:4,offset:s>0?1:0}},[A("el-card",{directives:[{name:"loading",rawName:"v-loading",value:t.loading,expression:"loading"}],attrs:{"body-style":{padding:"0px"}}},[A("img",{staticClass:"image",attrs:{src:a("b401")}}),A("div",[A("span",[t._v(t._s(e.name))]),A("div",{staticClass:"bottom clearfix"},[A("router-link",{attrs:{target:"_blank",to:{path:"/do",query:{id:e.id}}}},[A("el-button",{staticClass:"button",attrs:{type:"text"}},[t._v("开始做题")])],1)],1)])])],1)})),1)]),A("el-row",{staticClass:"app-item-contain"},[A("h3",{staticClass:"index-title-h3"},[t._v("时段试卷")]),A("div",t._l(t.timeLimitPaper,(function(e,s){return A("el-col",{key:s,attrs:{span:4,offset:s>0?1:0}},[A("el-card",{directives:[{name:"loading",rawName:"v-loading",value:t.loading,expression:"loading"}],attrs:{"body-style":{padding:"0px"}}},[A("img",{staticClass:"image",attrs:{src:a("4138")}}),A("div",{staticStyle:{padding:"14px"}},[A("span",[t._v(t._s(e.name))]),A("p",{staticClass:"index-limit-paper-time"},[A("span",[t._v(t._s(e.startTime))]),A("br"),A("span",[t._v(t._s(e.endTime))])]),A("div",{staticClass:"bottom clearfix"},[A("router-link",{attrs:{target:"_blank",to:{path:"/do",query:{id:e.id}}}},[A("el-button",{staticClass:"button",attrs:{type:"text"}},[t._v("开始做题")])],1)],1)])])],1)})),1)])],1)},s=[],i=a("5530"),r=a("2f62"),n=a("b775"),o={index:function(){return Object(n["a"])("/api/student/dashboard/index")},task:function(){return Object(n["a"])("/api/student/dashboard/task")}},g={data:function(){return{fixedPaper:[],timeLimitPaper:[],pushPaper:[],loading:!1,taskLoading:!1,taskList:[]}},created:function(){var t=this;this.loading=!0,o.index().then((function(A){t.fixedPaper=A.response.fixedPaper,t.timeLimitPaper=A.response.timeLimitPaper,t.pushPaper=A.response.pushPaper,t.loading=!1})),this.taskLoading=!0,o.task().then((function(A){t.taskList=A.response,t.taskLoading=!1}))},methods:{statusTagFormatter:function(t){return this.enumFormat(this.statusTag,t)},statusTextFormatter:function(t){return this.enumFormat(this.statusEnum,t)}},computed:Object(i["a"])(Object(i["a"])({},Object(r["c"])("enumItem",["enumFormat"])),Object(r["e"])("enumItem",{statusEnum:function(t){return t.exam.examPaperAnswer.statusEnum},statusTag:function(t){return t.exam.examPaperAnswer.statusTag}}))},m=g,d=(a("6b8c"),a("2877")),c=Object(d["a"])(m,e,s,!1,null,"4b02f37a",null);A["default"]=c.exports},acbf:function(t,A,a){t.exports=a.p+"static/img/img2.9993d8b7.jpg"},b401:function(t,A){t.exports="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAN3ElEQVR4Xu2dT4hkVxXGz6n+Q8SRdHDjysyALsRFelaagKbjyj+LmWxEiGEmgpsEJt1o3UuZxXQWmrxbmB4XrjPRoESQTNwoBMwMgkYQMqOQhYjpXgrC9ARJINXVR+74XltT9ExXvTr33fOqv17OvHfed7/z/ereeu/Ve0z4gwNw4K4OMLyBA3Dg7g4AEKQDDtzDAQCCeMABAIIMwIF6DmAGqecb9jomDgCQY9JoDLOeAwCknm/Y65g4AECOSaMxzHoOAJB6vmGvY+JAKwHZ2tpaGQwGD5U9WmXmlWPSr7kfpoh8XkSYmX81HA7/0ev13sk56NYA8sILL5xcWFg4IyJrzHw2p2k4drMOiMhfiOgtInrTe/9mk0c3D0g5W2wR0fkmjcGxzDrw++Fw+N1er/fPJhSaBqTf718UkXUiwhKqiTS06Bgi8n3v/Y9TSzYJSDlrvE5Ea4cYsENEV0TkaqfT2e12u1dTm4T6zTjQ7/dvikj1YfiBiHyPmb9ARF8lok+NqxCR35w4ceKJZ5555j+pFJoDJISwKiKvM/PJsUFfY+ZNAJEqCvnrjgLCzO93u937K1VFUTzNzI6IHhxT+u5gMPjKc889968UIzAFSDlzvDe6pBKRW8y87py7nMIA1LTjwL0AiSpfeumljw0Ggx8R0QVm7lTKReTtDz/88Eubm5t72qMxA0gJRzxTsToy8BvMfN45d1174Khnz4GjAKkUv/jii99k5l+OQfKy9/472qMyA0gI4eXRM1UicmN5eXltY2NjV3vQqGfTgUkBier7/f63ReTnYyP5mnPud5qjMwFIv99fE5E4e9z+i8uq/f391V6vt605WNSy7cA0gMSRFEXxU2Z+eiQ3f3POPcTMojVSE4CEECIco2esTmNZpdXi9tSZFpDyO8lfmfkz1SiZ+clut/uq1qizAxJCiBcA4/Kqmj1e8d7joqBWh1tUZ1pA4tDi95FOp/PayDD/5Jx7RGvYFgC5QkRnqgENh8NTWFpptbdddeoAEkcYQvg7EX22+oy97777Vi5cuPC+xuizAlKeubqJ2UOjle2vMQMgPyCiH44ss57odru/0HAkKyBFUZxl5njFvFpePe69jzMK/o6hA3UB6ff7D4vIH0csC845r2FhVkBCCJeI6NlqIEtLSw/gtK5GW9tZoy4gRVF8Il55T7ESyQ1IvI/q0TiweN3De39wkbCdLYbqWRyoC0j5PSTej/XxMku/9d5/fRYtB8s1jSJ1a4QQDgAhomvOucNuTqxbHvu1zIFZACmKYoeZP10C8rb3/mGN4eeeQeIX9OruzTecc/ghlEZXW1pjFkBCCPGicnUj45+dc1/UsCE3IAdXPEXkee/9psagUKOdDgCQsb6FEABIO7OcRDUAASBJgjUvRQEIAJmXLCcZBwABIEmCNS9FAQgAmZcsJxkHAAEgSYI1L0VHARGRDzqdzjcmGZuILIvIr5n5RLn9H5xzX55k36O2wWneoxzC/zfmwNhTTWY57qvOuSdnKVDt23pA4hMXO53OFp62qBEHlRrxJ9JXnHNPTVsthPBvIvrktPsdsv0559zPFOpQ6wEpimKdmeOTF/Fny4GpfxUaQniXiD434zBec859a8YaB7vPAyCbzHxRyxDU0XGAmR+b9hlmo/fmMfMNIopP1Zz4b29v75b2w67nEZBrEzuKDbUduH1ndvybFRArN6/OHSDOuaxj0k5cm+qN3joEQBQ6p3EvVlEUdyyxAIhCY2qWACA1jbvbbgBE2dDM5QCIcgMAiLKhmcsBEOUGABBlQzOXAyDKDQAgyoZmLgdAlBsAQJQNzVwOgCg3AIAoG5q5HABRbgAAUTY0czkAotwAAKJsaOZyAES5AQBE2dDM5QCIcgMAiLKhmcsBEOUGABBlQzOXAyDKDQAgyoZmLgdAlBsAQJQNzVwOgCg3AIAoG5q5HABRbgAAUTY0czkAotwAAKJsaOZyAES5AQBE2dDM5QCIcgMAiLKhmcsBEOUGABBlQzOXAyDKDQAgyoZmLgdAlBsAQJQNzVwOgCg3AIAoG5q5HABRbgAAUTY0czkAotwAAKJsaOZyAES5AQBE2dDM5QCIcgMAiLKhmcsBEOUGABBlQzOXAyDKDQAgyoZmLgdAlBsAQJQNzVwOgCg3AIAoG5q5HABRbgAAUTY0czkAotyAFIAQ0ZqyTJSb3IGr1aZ4gc7kpt11y0SAKChDiVkdACCzOkhESoDgLbcKvdAuAUAUHNUAJL4nfWFhIU7tDypIQgkFB0Tkhvd+ddpSo2+5xUs8lWaQqgkhhFVmXpm2Kdhe14G9vb3tXq+3XacqABlzTWMGqdMI7GPTAQACQGwm04gqAAJAjETRpgwAAkBsJtOIKgACQIxE0aYMAAJAbCbTiCoAAkCMRNGmDAACQGwm04gqAAJAjETRpgwAAkBsJtOIKgACQIxE0aYMAAJAbCbTiCoAAkCMRNGmDAACQGwm04gqAAJAjETRpgwAAkBsJtOIKgACQIxE0aYMAAJAbCbTiCoAAkCMRNGmDAACQGwm04gqAAJAjETRpgwAAkBsJtOIKgACQIxE0aYMAAJAbCbTiCoAAkCMRNGmDAACQGwm04gqAAJAjETRpgwAAkBsJtOIKgACQIxE0aYMAAJAbCbTiCoAAkCMRNGmDAACQGwm04gqAJIIkPItUxeZudaLW4zkY15kXOt2uwcv85xmUAAkESAhhCtEdGaaZmDbZA7sOuceqFMdgCQCpCiK68z8UJ2mYB99B5aWlh7Y2NjYnbYyAEkHyFlmvoQXeU4bSd3tReQWEW1672Mvpv4DIIkAmboT2MGkAwAEgJgMphVRAASAWMmiSR0ABICYDKYVUQAEgFjJokkdAASAmAymFVEABIBYyaJJHQAEgJgMphVRAASAWMmiSR0ABICYDKYVUQAEgFjJokkdAASAmAymFVEABIBYyaJJHQAEgJgMphVRAASAWMmiSR0ABICYDKYVUQAEgFjJokkdAASAmAymFVEABIBYyaJJHQAEgJgMphVRAASAWMmiSR0AJCEgRVGc63Q6J012/piIEpHdpaWlV+o88idaBEASAVIUxWVmPndMcmh6mCKy7b0/VUckAEkHCB4cVyeRifbBg+OUjA0hSFVKRJ733m/WKV0UxSYzX6yzL/ZRd+AN59zZOlUxgySaQWLZ+ADrxcVFfAepk0ylfeJ3EOfc9brlAEhCQOo2BfvZcQCAABA7aTSoBIAAEIOxtCMJgAAQO2k0qASAABCDsbQjCYAAEDtpNKgEgAAQg7G0IwmAABA7aTSoBIAAEIOxtCMJgAAQO2k0qASAABCDsbQjCYAAEDtpNKgEgAAQg7G0IwmAABA7aTSoBIAAEIOxtCMJgAAQO2k0qASAABCDsbQjCYAAEDtpNKgEgAAQg7G0I2nuAYm/C19YWDjDzCuT2C4iow9puMrMVyfZD9s044CIxAcw1P6N+bQq5x6QEMJNIpoIjmnNw/Z5HBgOh6d6vd52E0efa0D6/f6aiLzVhJE4RnMOiMiG9/5SE0cEIE24jGOoOjDL88qmFXKsAGHmx7rdLr5TTJuSzNuPrwQAiFJDxo0FIErGNlwGgNxpOGv5D0C0nMxbB4AAkLwJNH50AAJAjEc0rzwAAkDyJtD40QEIADEe0bzyAAgAyZtA40cHIA0BIiKPe++vGM8D5I05AEASARJCWCWid6ryTV5gQsr1HMgMyOi9fLXfVKXnBpHadZAoavSVakRkYoCaZh2HWpkBUXkln2afUgJy3Tl3WlMsajXjwNgH3TXn3FrqIx8CZmM3Sd5rbNqAxHuvHq0O6JxTrZ+6Saj/PwdCCPH29gdLP+K7z0/Vfff5pJ6GEOIdw89W2zd5m31jgBRFsc7MWyMHfMo5d3lSk7CdDQcOee980j5ubW2tfPTRR+8wc/US1h3nnIkXsqp+wpe/KHxv5Iv69vLy8unUnz42YjU/KkII54no5dE+eu9PpRrh+Gu8LZ3gUQWknJ7jqd0zI+bWfv95qoag7tEOjC2zKFVo4+wxGAzih+rtX6KKyK3l5eWTVj5U1QE57JeFVtaTR8cCW1QOjH+ql/9+WvM36iUc8Veo8RLB7b9UINbtrDogUcgha9j4w/+4jm3sAQB1DcF+/3dgfBYhol0iekyrjyGEuIyLy7nqb2dpaWnVyuwRRSUBpPxkiDBUZ0LisVTNRZDTOzB+8bc84i4zPz7Lr0XLfLxOROOnj1VnKA2HkgBSfhdZFZH4KJ/7x4QmPSOiYQpq3DGL3PGFvfofZt5cXFz8ybSf9uUSPJ7pPFhWlTVN5iIZIEdAEmeXy8Ph8I2mHimD0Nd3YPys1kilOJtcmgSUfr9/RkTWD5k1YjmTcCRbYo22opym45mt0eXWwSYicqXT6VyPs039Fibdc3XSB+ElVdFA8f39/XuNNX7i3+2ZZ7uxf7GP+/v728wcLzTeriUi8XrG2cP2jWesmHnd8rWypDNI1dNyzRkvGB6c/m2g3ziEbQeuEVGEw/SJm0YAqfpUrj/j40YPbkex3UOoS+DADhFtWp41RsfcKCDVgeOyS0TOMnM8iwFYEqTQWMmd8oTNJeszxrhvWQAZFxFnFmMNhRwlB2Y5HawkYaYyJgCZaQTYGQ4kdACAJDQXpdvvAABpfw8xgoQOAJCE5qJ0+x0AIO3vIUaQ0AEAktBclG6/AwCk/T3ECBI6AEASmovS7XcAgLS/hxhBQgcASEJzUbr9DvwXRluofeL9SlIAAAAASUVORK5CYII="},badc:function(t,A,a){t.exports=a.p+"static/img/img1.8623acdd.jpg"},ca56:function(t,A,a){},ff72:function(t,A,a){t.exports=a.p+"static/img/img3.f8d0f7b7.jpeg"}}]);