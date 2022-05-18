.class Landroid/support/v7/widget/o$a;
.super Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/o;->u(Landroid/content/Context;Landroid/support/v7/widget/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroid/support/v7/widget/o;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/o;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/o$a;->b:Landroid/support/v7/widget/o;

    iput-object p2, p0, Landroid/support/v7/widget/o$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o$a;->b:Landroid/support/v7/widget/o;

    iget-object v1, p0, Landroid/support/v7/widget/o$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/o;->l(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
