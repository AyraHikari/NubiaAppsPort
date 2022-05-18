.class Lcn/nubia/camera/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/c;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/a/c$2;->a:Lcn/nubia/camera/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/a/c$2;->a:Lcn/nubia/camera/a/c;

    invoke-static {v0}, Lcn/nubia/camera/a/c;->b(Lcn/nubia/camera/a/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/a/c$2;->a:Lcn/nubia/camera/a/c;

    invoke-static {v0}, Lcn/nubia/camera/a/c;->c(Lcn/nubia/camera/a/c;)V

    :cond_0
    return-void
.end method
