.class Lcn/nubia/camera/lightpainting/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/lightpainting/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$4;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$4;->a:Lcn/nubia/camera/lightpainting/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/lightpainting/b;Z)V

    return-void
.end method
