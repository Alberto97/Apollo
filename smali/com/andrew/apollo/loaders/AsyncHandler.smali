.class public final Lcom/andrew/apollo/loaders/AsyncHandler;
.super Ljava/lang/Object;
.source "AsyncHandler.java"


# static fields
.field private static final sHandler:Landroid/os/Handler;

.field private static final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/andrew/apollo/loaders/AsyncHandler;->sHandlerThread:Landroid/os/HandlerThread;

    .line 28
    sget-object v0, Lcom/andrew/apollo/loaders/AsyncHandler;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/andrew/apollo/loaders/AsyncHandler;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/andrew/apollo/loaders/AsyncHandler;->sHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 40
    sget-object v0, Lcom/andrew/apollo/loaders/AsyncHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void
.end method
