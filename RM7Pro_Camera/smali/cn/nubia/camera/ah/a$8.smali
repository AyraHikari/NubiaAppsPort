.class Lcn/nubia/camera/ah/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/ah/a$8;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiExposureFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/ah/a$8;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0, p1}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/ah/a;I)V

    return-void
.end method
