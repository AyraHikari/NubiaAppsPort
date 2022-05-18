.class public final Landroid/support/v4/view/AsyncLayoutInflater;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;,
        Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;,
        Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;,
        Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncLayoutInflater"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/AsyncLayoutInflater$1;-><init>(Landroid/support/v4/view/AsyncLayoutInflater;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-void
.end method


# virtual methods
.method public inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V
    .locals 1

    const-string v0, "callback argument may not be null!"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    move-result-object v0

    iput-object p0, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    iput p1, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iput-object p2, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    iput-object p3, v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    iget-object p1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->mInflateThread:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V

    return-void
.end method
