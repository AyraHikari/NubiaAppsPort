.class Lcn/nubia/camera/q/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/b;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcn/nubia/camera/q/b$3;->a:Lcn/nubia/camera/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1056
    iget-object v0, p0, Lcn/nubia/camera/q/b$3;->a:Lcn/nubia/camera/q/b;

    iget-object v0, v0, Lcn/nubia/camera/q/b;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-interface {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;->b()V

    return-void
.end method
