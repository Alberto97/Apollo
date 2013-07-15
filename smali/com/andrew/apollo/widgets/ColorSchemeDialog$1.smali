.class Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;
.super Ljava/lang/Object;
.source "ColorSchemeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/widgets/ColorSchemeDialog;->setUp(I)V
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
    .line 122
    iput-object p1, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 145
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 140
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mColorPicker:Lcom/andrew/apollo/widgets/ColorPickerView;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$100(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Lcom/andrew/apollo/widgets/ColorPickerView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$000(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/widgets/ColorPickerView;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mNewColor:Landroid/widget/Button;
    invoke-static {v0}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$200(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/widgets/ColorSchemeDialog$1;->this$0:Lcom/andrew/apollo/widgets/ColorSchemeDialog;

    #getter for: Lcom/andrew/apollo/widgets/ColorSchemeDialog;->mHexValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/andrew/apollo/widgets/ColorSchemeDialog;->access$000(Lcom/andrew/apollo/widgets/ColorSchemeDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method
