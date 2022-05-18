.class public Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;
.super Ljava/lang/Object;
.source "NubiaAlertDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmPm"
.end annotation


# instance fields
.field private final mAmPm:Landroid/widget/TextView;

.field private final mAmString:Ljava/lang/String;

.field private final mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const v1, 0x7f12006c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    .line 86
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "ampm":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    .line 88
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method getAmPmText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method setIsMorning(Z)V
    .locals 2
    .param p1, "isMorning"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 92
    iget-object v1, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaAlertDigitalClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    return-void
.end method
