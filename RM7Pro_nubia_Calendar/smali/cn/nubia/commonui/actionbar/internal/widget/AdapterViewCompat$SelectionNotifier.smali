.class Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterViewCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;)V
    .locals 0

    .prologue
    .line 855
    .local p0, "this":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$1;

    .prologue
    .line 855
    .local p0, "this":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 857
    .local p0, "this":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->post(Ljava/lang/Runnable;)Z

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;)V

    goto :goto_0
.end method
