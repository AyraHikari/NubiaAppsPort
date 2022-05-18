.class Lcn/nubia/video/mediaeditorview/gifmaker/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/gifmaker/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/a;-><init>(Ljava/io/InputStream;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/gifmaker/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/gifmaker/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->a(Lcn/nubia/video/mediaeditorview/gifmaker/a;)Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->a(Lcn/nubia/video/mediaeditorview/gifmaker/a;)Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a$b;->b()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/a$a;->a:Lcn/nubia/video/mediaeditorview/gifmaker/a;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a;->a(Lcn/nubia/video/mediaeditorview/gifmaker/a;)Lcn/nubia/video/mediaeditorview/gifmaker/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediaeditorview/gifmaker/a$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method
