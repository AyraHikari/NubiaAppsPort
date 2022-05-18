.class Lcn/nubia/camera/bb/s$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/bb/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/s;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/s;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcn/nubia/camera/bb/s$3;->a:Lcn/nubia/camera/bb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 281
    iget-object p1, p0, Lcn/nubia/camera/bb/s$3;->a:Lcn/nubia/camera/bb/s;

    invoke-static {p1}, Lcn/nubia/camera/bb/s;->c(Lcn/nubia/camera/bb/s;)Lcn/nubia/camera/bb/w;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcn/nubia/camera/bb/s;->a(Lcn/nubia/camera/bb/s;ZLcn/nubia/camera/bb/w;)V

    return-void
.end method
