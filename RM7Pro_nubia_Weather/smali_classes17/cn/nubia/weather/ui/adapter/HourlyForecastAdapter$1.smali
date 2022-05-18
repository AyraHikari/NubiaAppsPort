.class Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;
.super Ljava/lang/Object;
.source "HourlyForecastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->onBindViewHolder(Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

.field final synthetic val$areaId:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .prologue
    .line 107
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    iput-object p2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;->val$areaId:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;->this$0:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;->val$areaId:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->clickToLink(Ljava/lang/String;I)V

    .line 113
    return-void
.end method
