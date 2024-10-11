import { router } from '@kit.ArkUI'

@Entry
@Component
struct Second {
  build() {
    Column() {
      Text("第二个页面").fontSize(40)

      Button() {
        Text("返回上一页")
      }.padding(20).margin({ top: 20 }).onClick(() => {
        console.log("返回第一个页面")
        router.back()
      })
    }
  }
}