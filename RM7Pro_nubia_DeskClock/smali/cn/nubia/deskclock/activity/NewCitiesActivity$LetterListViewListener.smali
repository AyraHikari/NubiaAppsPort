.class Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterListViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;Lcn/nubia/deskclock/activity/NewCitiesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p2, "x1"    # Lcn/nubia/deskclock/activity/NewCitiesActivity$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "bRet":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 222
    const-string v2, "^[a-zA-Z]*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v2}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v2, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$200(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v2, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$300(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)V

    .line 229
    :goto_0
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0

    .line 227
    :cond_1
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v2, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$400(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
