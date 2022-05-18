.class Lcn/nubia/camera/k/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/h;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcn/nubia/camera/k/h$3;->a:Lcn/nubia/camera/k/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 682
    iget-object v0, p0, Lcn/nubia/camera/k/h$3;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
