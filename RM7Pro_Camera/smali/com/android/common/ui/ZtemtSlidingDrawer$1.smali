.class Lcom/android/common/ui/ZtemtSlidingDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/ZtemtSlidingDrawer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer$1;->b:Lcom/android/common/ui/ZtemtSlidingDrawer;

    iput p2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer$1;->b:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->a(Lcom/android/common/ui/ZtemtSlidingDrawer;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer$1;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
