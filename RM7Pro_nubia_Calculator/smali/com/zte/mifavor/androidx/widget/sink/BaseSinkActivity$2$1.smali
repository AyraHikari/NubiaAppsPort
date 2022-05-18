.class Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2$1;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;
.source "BaseSinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2$1;->this$1:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$2;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .locals 0
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
