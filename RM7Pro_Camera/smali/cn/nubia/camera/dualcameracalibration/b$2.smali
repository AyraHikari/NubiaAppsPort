.class Lcn/nubia/camera/dualcameracalibration/b$2;
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

    .line 339
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$2;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 343
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$2;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
