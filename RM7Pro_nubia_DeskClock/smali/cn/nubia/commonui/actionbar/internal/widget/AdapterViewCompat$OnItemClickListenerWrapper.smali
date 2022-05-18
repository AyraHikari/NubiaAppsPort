.class Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;
.super Ljava/lang/Object;
.source "AdapterViewCompat.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnItemClickListenerWrapper"
.end annotation


# instance fields
.field private final mWrappedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;
    .param p2, "listener"    # Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;

    .prologue
    .line 267
    .local p0, "this":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<TT;>.OnItemClickListenerWrapper;"
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;->mWrappedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;

    .line 269
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<TT;>.OnItemClickListenerWrapper;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;->mWrappedListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;->onItemClick(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V

    .line 274
    return-void
.end method
