.class Lcn/nubia/camera/m/b$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/m/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/m/b;Landroid/os/Handler;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/camera/m/b$1;->a:Lcn/nubia/camera/m/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/m/b$1;->a:Lcn/nubia/camera/m/b;

    invoke-static {p1}, Lcn/nubia/camera/m/b;->a(Lcn/nubia/camera/m/b;)V

    return-void
.end method
