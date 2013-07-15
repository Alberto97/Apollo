.class public Lcom/devspark/appmsg/AppMsg;
.super Ljava/lang/Object;
.source "AppMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devspark/appmsg/AppMsg$Style;
    }
.end annotation


# static fields
.field public static final STYLE_ALERT:Lcom/devspark/appmsg/AppMsg$Style;

.field public static final STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

.field public static final STYLE_INFO:Lcom/devspark/appmsg/AppMsg$Style;


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mDuration:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xbb8

    .line 56
    new-instance v0, Lcom/devspark/appmsg/AppMsg$Style;

    const/16 v1, 0x1388

    const/high16 v2, 0x7f05

    invoke-direct {v0, v1, v2}, Lcom/devspark/appmsg/AppMsg$Style;-><init>(II)V

    sput-object v0, Lcom/devspark/appmsg/AppMsg;->STYLE_ALERT:Lcom/devspark/appmsg/AppMsg$Style;

    .line 61
    new-instance v0, Lcom/devspark/appmsg/AppMsg$Style;

    const v1, 0x7f050001

    invoke-direct {v0, v3, v1}, Lcom/devspark/appmsg/AppMsg$Style;-><init>(II)V

    sput-object v0, Lcom/devspark/appmsg/AppMsg;->STYLE_CONFIRM:Lcom/devspark/appmsg/AppMsg$Style;

    .line 66
    new-instance v0, Lcom/devspark/appmsg/AppMsg$Style;

    const v1, 0x7f050002

    invoke-direct {v0, v3, v1}, Lcom/devspark/appmsg/AppMsg$Style;-><init>(II)V

    sput-object v0, Lcom/devspark/appmsg/AppMsg;->STYLE_INFO:Lcom/devspark/appmsg/AppMsg$Style;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/devspark/appmsg/AppMsg;->mDuration:I

    .line 82
    iput-object p1, p0, Lcom/devspark/appmsg/AppMsg;->mContext:Landroid/app/Activity;

    .line 83
    return-void
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/devspark/appmsg/AppMsg$Style;)Lcom/devspark/appmsg/AppMsg;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "style"

    .prologue
    .line 99
    new-instance v1, Lcom/devspark/appmsg/AppMsg;

    invoke-direct {v1, p0}, Lcom/devspark/appmsg/AppMsg;-><init>(Landroid/app/Activity;)V

    .line 101
    .local v1, result:Lcom/devspark/appmsg/AppMsg;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 103
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, v:Landroid/view/View;
    #getter for: Lcom/devspark/appmsg/AppMsg$Style;->background:I
    invoke-static {p2}, Lcom/devspark/appmsg/AppMsg$Style;->access$000(Lcom/devspark/appmsg/AppMsg$Style;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iput-object v3, v1, Lcom/devspark/appmsg/AppMsg;->mView:Landroid/view/View;

    .line 110
    #getter for: Lcom/devspark/appmsg/AppMsg$Style;->duration:I
    invoke-static {p2}, Lcom/devspark/appmsg/AppMsg$Style;->access$100(Lcom/devspark/appmsg/AppMsg$Style;)I

    move-result v4

    iput v4, v1, Lcom/devspark/appmsg/AppMsg;->mDuration:I

    .line 112
    return-object v1
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/devspark/appmsg/AppMsg;->mDuration:I

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mView:Landroid/view/View;

    return-object v0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devspark/appmsg/AppMsg;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/devspark/appmsg/MsgManager;->getInstance()Lcom/devspark/appmsg/MsgManager;

    move-result-object v0

    .line 142
    .local v0, manager:Lcom/devspark/appmsg/MsgManager;
    invoke-virtual {v0, p0}, Lcom/devspark/appmsg/MsgManager;->add(Lcom/devspark/appmsg/AppMsg;)V

    .line 143
    return-void
.end method
