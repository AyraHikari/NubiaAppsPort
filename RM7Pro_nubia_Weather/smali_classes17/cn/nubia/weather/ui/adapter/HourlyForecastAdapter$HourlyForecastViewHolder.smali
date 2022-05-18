.class public Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HourlyForecastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourlyForecastViewHolder"
.end annotation


# instance fields
.field rootView:Landroid/view/View;

.field tempText:Landroid/widget/TextView;

.field timeText:Landroid/widget/TextView;

.field typeImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 182
    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    .line 186
    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->timeText:Landroid/widget/TextView;

    .line 187
    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    .line 191
    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->rootView:Landroid/view/View;

    .line 196
    return-void
.end method
