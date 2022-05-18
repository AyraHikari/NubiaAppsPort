.class Lcn/nubia/camera/dualcameracalibration/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/j;->n()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/j;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/j$1;->a:Lcn/nubia/camera/dualcameracalibration/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/j$1;->a:Lcn/nubia/camera/dualcameracalibration/j;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/j;->a(Lcn/nubia/camera/dualcameracalibration/j;)Lcn/nubia/camera/dualcameracalibration/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/dualcameracalibration/h;->c()V

    return-void
.end method
