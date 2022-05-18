.class Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotePadLabelPopupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mChoiceImageView:Landroid/widget/ImageView;

.field mTitleCount:Landroid/widget/TextView;

.field mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter$ViewHolder;->this$0:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
