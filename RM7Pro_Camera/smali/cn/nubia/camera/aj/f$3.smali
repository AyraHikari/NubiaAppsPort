.class Lcn/nubia/camera/aj/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/nubia/camera/aj/f$3;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/aj/f$3;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->n(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/aj/f$3;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->n(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/g/f;->a(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
