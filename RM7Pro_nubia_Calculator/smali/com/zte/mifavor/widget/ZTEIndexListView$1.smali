.class Lcom/zte/mifavor/widget/ZTEIndexListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZTEIndexListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ZTEIndexListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEIndexListView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEIndexListView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexListView$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexListView$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexListView;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexListView;->access$000(Lcom/zte/mifavor/widget/ZTEIndexListView;)Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->show()V

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method
