.class Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;
.super Ljava/lang/Object;
.source "BottomMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/BottomMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItem"
.end annotation


# instance fields
.field mId:I

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mTextView:Landroid/widget/TextView;

    .line 38
    iput p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    return-void
.end method
