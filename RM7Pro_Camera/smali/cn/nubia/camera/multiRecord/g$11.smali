.class Lcn/nubia/camera/multiRecord/g$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 1306
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$11;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1309
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$11;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->S(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method
