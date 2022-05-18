.class final Lcn/nubia/camera/k/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/n;->a(Ljava/lang/String;)Lcom/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/a/d<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/k/n$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/k/n$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/b/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcn/nubia/camera/k/n$2;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
