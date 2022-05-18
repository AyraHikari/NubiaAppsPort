.class Lcn/nubia/camera/aimoon/e$1;
.super Lcn/nubia/camera/g/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aimoon/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/e;Landroid/content/Context;Lcn/nubia/j/a;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e$1;->a:Lcn/nubia/camera/aimoon/e;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcn/nubia/camera/g/h;->a()V

    const-string v0, "AIMoonOnShutterButtonListener"

    const-string v1, "onShutter"

    .line 44
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
