.class Lcom/andrew/apollo/utils/PreferenceUtils$1;
.super Landroid/os/AsyncTask;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/utils/PreferenceUtils;->setStartPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/utils/PreferenceUtils;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/andrew/apollo/utils/PreferenceUtils;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/andrew/apollo/utils/PreferenceUtils$1;->this$0:Lcom/andrew/apollo/utils/PreferenceUtils;

    iput p2, p0, Lcom/andrew/apollo/utils/PreferenceUtils$1;->val$value:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/utils/PreferenceUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "unused"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/andrew/apollo/utils/PreferenceUtils$1;->this$0:Lcom/andrew/apollo/utils/PreferenceUtils;

    #getter for: Lcom/andrew/apollo/utils/PreferenceUtils;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/andrew/apollo/utils/PreferenceUtils;->access$000(Lcom/andrew/apollo/utils/PreferenceUtils;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "start_page"

    iget v2, p0, Lcom/andrew/apollo/utils/PreferenceUtils$1;->val$value:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    const/4 v1, 0x0

    return-object v1
.end method
