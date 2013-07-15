.class Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;
.super Ljava/lang/Object;
.source "ColorSchemeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/widgets/ColorSchemeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mListener:Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$500(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mListener:Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$500(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    invoke-virtual {v1}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 222
    :cond_0
    return-void

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f05000a

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f05000c

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f050010

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 199
    :pswitch_4
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f05000f

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 202
    :pswitch_5
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f05000e

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto :goto_0

    .line 205
    :pswitch_6
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f05000d

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto/16 :goto_0

    .line 208
    :pswitch_7
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f050005

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto/16 :goto_0

    .line 211
    :pswitch_8
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    const v2, 0x7f050004

    #calls: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->getColor(I)I
    invoke-static {v1, v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$300(Lcom/andrew/apollo/widgets/ColorSchemeDialog;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto/16 :goto_0

    .line 214
    :pswitch_9
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$2;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mCurrentColor:I
    invoke-static {v1}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$400(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    goto/16 :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0050
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
