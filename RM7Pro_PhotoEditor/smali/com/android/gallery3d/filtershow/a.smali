.class public abstract Lcom/android/gallery3d/filtershow/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/a;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/a;->b:Z

    return p0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/a;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/a;->b()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/a;->b:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/a;->b:Z

    new-instance p1, Lcom/android/gallery3d/filtershow/a$a;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/a$a;-><init>(Lcom/android/gallery3d/filtershow/a;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/a;->a:J

    return-void
.end method
