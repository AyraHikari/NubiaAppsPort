.class Lcn/nubia/weather/ui/widget/WidgetProvider$1;
.super Landroid/os/AsyncTask;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/widget/WidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/widget/WidgetProvider;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/content/Context;[I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/widget/WidgetProvider;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WidgetProvider;

    iput-object p2, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->val$appWidgetIds:[I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 55
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->this$0:Lcn/nubia/weather/ui/widget/WidgetProvider;

    iget-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->val$appWidgetIds:[I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/ui/widget/WidgetProvider;->reverseWithRecordedLocs(Landroid/content/Context;[I)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
