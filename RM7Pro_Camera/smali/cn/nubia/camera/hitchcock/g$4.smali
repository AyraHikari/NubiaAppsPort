.class Lcn/nubia/camera/hitchcock/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/bb/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/w;

.field final synthetic b:Lcn/nubia/camera/hitchcock/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/g;Lcn/nubia/camera/bb/w;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/g$4;->b:Lcn/nubia/camera/hitchcock/g;

    iput-object p2, p0, Lcn/nubia/camera/hitchcock/g$4;->a:Lcn/nubia/camera/bb/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g$4;->b:Lcn/nubia/camera/hitchcock/g;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/g;->c(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/g$4;->b:Lcn/nubia/camera/hitchcock/g;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/g;->c(Lcn/nubia/camera/hitchcock/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/g$4;->a:Lcn/nubia/camera/bb/w;

    invoke-interface {v0, v1}, Lcn/nubia/camera/bb/z;->a(Lcn/nubia/camera/bb/w;)V

    :cond_0
    return-void
.end method
