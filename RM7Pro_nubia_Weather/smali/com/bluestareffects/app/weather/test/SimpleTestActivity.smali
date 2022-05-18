.class public Lcom/bluestareffects/app/weather/test/SimpleTestActivity;
.super Landroid/app/Activity;
.source "SimpleTestActivity.java"


# instance fields
.field private mController:Lcom/bluestareffects/app/weather/api/WeatherController;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->paused:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->paused:Z

    return v0
.end method

.method static synthetic access$002(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/SimpleTestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->paused:Z

    return p1
.end method

.method static synthetic access$100(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)Lcom/bluestareffects/app/weather/api/WeatherController;
    .locals 1
    .param p0, "x0"    # Lcom/bluestareffects/app/weather/test/SimpleTestActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->mController:Lcom/bluestareffects/app/weather/api/WeatherController;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v1, Lcom/bluestareffects/app/weather/api/WeatherController;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/api/WeatherController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->mController:Lcom/bluestareffects/app/weather/api/WeatherController;

    .line 25
    iget-object v1, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->mController:Lcom/bluestareffects/app/weather/api/WeatherController;

    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherController;->getView()Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->setContentView(Landroid/view/View;)V

    .line 27
    new-instance v1, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;

    invoke-direct {v1, p0}, Lcom/bluestareffects/app/weather/test/SimpleTestActivity$1;-><init>(Lcom/bluestareffects/app/weather/test/SimpleTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 45
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->mController:Lcom/bluestareffects/app/weather/api/WeatherController;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherController;->onPause()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/bluestareffects/app/weather/test/SimpleTestActivity;->mController:Lcom/bluestareffects/app/weather/api/WeatherController;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherController;->onResume()V

    .line 52
    return-void
.end method
