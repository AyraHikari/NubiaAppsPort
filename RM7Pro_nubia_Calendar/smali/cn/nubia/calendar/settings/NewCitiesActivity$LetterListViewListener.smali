.class Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterListViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity;Lcn/nubia/calendar/settings/NewCitiesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p2, "x1"    # Lcn/nubia/calendar/settings/NewCitiesActivity$1;

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "bRet":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 568
    const-string v2, "^[a-zA-Z]*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v2}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 571
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v2, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1500(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v2, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1600(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)V

    .line 579
    :goto_0
    const/4 v0, 0x1

    .line 581
    :cond_0
    return v0

    .line 576
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v2, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1700(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
