import SwiftUI

struct ChatView: View {

  @State
  private var dismissKeyboardOnTapOrDrag = false

  var body: some View {
    VStack(spacing: 0) {
      List {

      }
      .resignKeyboardOnDragGesture {
        dismissKeyboardOnTapOrDrag = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
          dismissKeyboardOnTapOrDrag = false
        }
      }
      .resignKeyboardOnTapGesture {
        dismissKeyboardOnTapOrDrag = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
          dismissKeyboardOnTapOrDrag = false
        }
      }

      ChatInputPanel(dismissKeyboardOnTapOrDrag: dismissKeyboardOnTapOrDrag)
    }
  }
}

struct ChatView_Previews: PreviewProvider {
  static var previews: some View {
    ChatView()
  }
}