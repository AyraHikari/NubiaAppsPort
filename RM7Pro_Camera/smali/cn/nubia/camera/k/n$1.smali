.class final Lcn/nubia/camera/k/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/n;->a()Lcom/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/a/d<",
        "Lcn/nubia/camera/k/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/b/b;
    .locals 2

    .line 44
    new-instance v0, Lcn/nubia/camera/k/b/b;

    sget-object v1, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    invoke-direct {v0, v1}, Lcn/nubia/camera/k/b/b;-><init>(Lcom/a/a/a/d;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/k/n$1;->a()Lcn/nubia/camera/k/b/b;

    move-result-object v0

    return-object v0
.end method
