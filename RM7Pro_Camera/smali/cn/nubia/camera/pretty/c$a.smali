.class Lcn/nubia/camera/pretty/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/WaterDropSeekbar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/pretty/c;)V
    .locals 2

    .line 248
    iput-object p1, p0, Lcn/nubia/camera/pretty/c$a;->a:Lcn/nubia/camera/pretty/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->i(Lcn/nubia/camera/pretty/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/pretty/c$a;->b:Ljava/lang/String;

    .line 250
    invoke-static {p1}, Lcn/nubia/camera/pretty/c;->j(Lcn/nubia/camera/pretty/c;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/c$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/pretty/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/pretty/c$a;->c:Ljava/lang/String;

    return-object v0
.end method
