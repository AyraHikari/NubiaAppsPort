.class Lcn/nubia/calendar/AboutPreferences$1;
.super Ljava/lang/Object;
.source "AboutPreferences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/AboutPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/AboutPreferences;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/AboutPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/AboutPreferences;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/calendar/AboutPreferences$1;->this$0:Lcn/nubia/calendar/AboutPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 45
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "nextIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    .line 47
    .local v0, "array":[Ljava/lang/String;
    const-string v2, "authorities"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcn/nubia/calendar/AboutPreferences$1;->this$0:Lcn/nubia/calendar/AboutPreferences;

    invoke-virtual {v2, v1}, Lcn/nubia/calendar/AboutPreferences;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x7f110058
        :pswitch_0
    .end packed-switch
.end method
