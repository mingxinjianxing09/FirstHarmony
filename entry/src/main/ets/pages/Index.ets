import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Column() {
        Button() {
          Text("下一页")
        }.padding({
          top: 8,
          bottom: 8,
          left: 20,
          right: 20
        })
        .margin({ top: '50%', left: '36%' }).onClick(() => {
          console.log("点击了下一页")
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.log("跳转到下一页成功")
          }).catch((err: BusinessError) => {
            console.log(`跳转失败 ${err.message}`)
          })
        })
      }

    }
    .height('100%')
    .width('100%')
  }
}