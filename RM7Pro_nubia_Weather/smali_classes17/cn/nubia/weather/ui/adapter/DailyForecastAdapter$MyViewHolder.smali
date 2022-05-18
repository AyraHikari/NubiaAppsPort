.class Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
.super Ljava/lang/Object;
.source "DailyForecastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field private dayIv:Landroid/widget/ImageView;

.field private epochTimeTv:Landroid/widget/TextView;

.field private minMaxTempeTv:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

.field private weatherTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->this$0:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->epochTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->epochTimeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->dayIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->dayIv:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->weatherTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->weatherTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->minMaxTempeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->minMaxTempeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 201
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter$MyViewHolder;->rootView:Landroid/view/View;

    return-object p1
.end method
