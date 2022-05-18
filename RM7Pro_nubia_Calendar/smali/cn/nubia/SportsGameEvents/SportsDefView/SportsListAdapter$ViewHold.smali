.class Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
.super Ljava/lang/Object;
.source "SportsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHold"
.end annotation


# instance fields
.field centerTitle:Landroid/widget/TextView;

.field gameResult:Landroid/widget/TextView;

.field gameStatus:Landroid/widget/ImageView;

.field gameTime:Landroid/widget/TextView;

.field oneTeamName:Landroid/widget/TextView;

.field oneTeamPic:Landroid/widget/ImageView;

.field operateView:Landroid/widget/Button;

.field segmentLine:Landroid/view/View;

.field sportsTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

.field twoTeamName:Landroid/widget/TextView;

.field twoTeamPic:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    .prologue
    .line 217
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->this$0:Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
