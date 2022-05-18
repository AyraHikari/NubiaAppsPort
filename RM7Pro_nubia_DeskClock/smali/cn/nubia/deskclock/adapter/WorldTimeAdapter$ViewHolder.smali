.class Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WorldTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field checkobx:Landroid/widget/CheckBox;

.field cityDate:Landroid/widget/TextView;

.field cityName:Landroid/widget/TextView;

.field dayNight:Landroid/widget/ImageView;

.field dclock:Lcn/nubia/deskclock/ui/DigitalTime;

.field earlyLateTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
    .param p2, "x1"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)V

    return-void
.end method
