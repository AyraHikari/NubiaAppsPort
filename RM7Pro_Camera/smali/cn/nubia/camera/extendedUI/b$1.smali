.class Lcn/nubia/camera/extendedUI/b$1;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/extendedUI/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/b;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/b$1;->a:Lcn/nubia/camera/extendedUI/b;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public b()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/b$1;->a:Lcn/nubia/camera/extendedUI/b;

    invoke-static {v0, v0}, Lcn/nubia/camera/extendedUI/b;->a(Lcn/nubia/camera/extendedUI/b;Landroid/view/View;)V

    return-void
.end method
