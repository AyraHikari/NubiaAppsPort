.class Lcn/nubia/camera/elefnovideo/d$1;
.super Lcn/nubia/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/d;->b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/d;IIIILjava/lang/String;)V
    .locals 6

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/d$1;->a:Lcn/nubia/camera/elefnovideo/d;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/nubia/a/c;-><init>(IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 54
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->E()Z

    move-result p1

    return p1
.end method
