.class public abstract Lcom/bumptech/glide/request/b/a;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/i",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/bumptech/glide/request/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/request/b/a;->request:Lcom/bumptech/glide/request/b;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setRequest(Lcom/bumptech/glide/request/b;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/request/b/a;->request:Lcom/bumptech/glide/request/b;

    .line 35
    return-void
.end method
