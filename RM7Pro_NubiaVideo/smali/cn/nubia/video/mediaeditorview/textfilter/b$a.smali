.class Lcn/nubia/video/mediaeditorview/textfilter/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/textfilter/b;->setMatrix(Landroid/graphics/Matrix;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/textfilter/b;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/b$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/b$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/b;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
