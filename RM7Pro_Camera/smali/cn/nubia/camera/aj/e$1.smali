.class Lcn/nubia/camera/aj/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/facedetection/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/e;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field final synthetic b:Lcn/nubia/camera/aj/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/e;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcn/nubia/camera/aj/e$1;->b:Lcn/nubia/camera/aj/e;

    iput-object p2, p0, Lcn/nubia/camera/aj/e$1;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcn/nubia/camera/aj/e$1;->b:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->a(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/aj/e$1;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->b()V

    :cond_0
    return-void
.end method
