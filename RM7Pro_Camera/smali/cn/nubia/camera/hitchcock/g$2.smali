.class Lcn/nubia/camera/hitchcock/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/g;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/g;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/g$2;->a:Lcn/nubia/camera/hitchcock/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g$2;->a:Lcn/nubia/camera/hitchcock/g;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/g;->c(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g$2;->a:Lcn/nubia/camera/hitchcock/g;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/g;->c(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    :cond_0
    return-void
.end method
