.class Lcn/nubia/camera/dualcameracalibration/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$3;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 363
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 364
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$3;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/b;->h(Lcn/nubia/camera/dualcameracalibration/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->R:Lcn/nubia/camera/af/a;

    new-instance v0, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/camera/dualcameracalibration/g;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    return-void
.end method
