.class public Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "WeatherPrivatePolicyActivity.java"


# static fields
.field private static final HUAFENG_PRIVATE_POLICY_LINK:Ljava/lang/String; = "http://m.weathercn.com/privacy.do?partner=huawei2017"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 105
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, v1, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(II)V

    .line 109
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 37

    .prologue
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v34, "http://m.weathercn.com/privacy.do?partner=huawei2017"

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .local v4, "builder":Ljava/lang/StringBuilder;
    const-string v34, "&"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v34, "id=57465"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v34, "&"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v34, "p_source="

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v34, "&"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v34, "p_type=jump"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v34, "&"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v34, "language=zh-cn"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0c005f

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 44
    .local v5, "color":I
    const v34, 0x7f100149

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 45
    .local v20, "mailText":Landroid/widget/TextView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 46
    .local v21, "mailTextWithMail":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f090142

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 47
    .local v22, "mailstr":Ljava/lang/String;
    new-instance v19, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .local v19, "mailSpannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 49
    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_0

    .line 50
    move/from16 v29, v18

    .line 51
    .local v29, "startMailIndex":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v34

    add-int v8, v29, v34

    .line 52
    .local v8, "endMailIndex":I
    new-instance v34, Landroid/text/style/URLSpan;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mailto:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x12

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    new-instance v34, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v35, 0x12

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 54
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    .line 55
    goto :goto_0

    .line 56
    .end local v8    # "endMailIndex":I
    .end local v29    # "startMailIndex":I
    :cond_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 60
    const v34, 0x7f100155

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 61
    .local v12, "huafengText1":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    .line 62
    .local v31, "textWithHuafeng":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f090141

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 63
    .local v14, "huafengstr":Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v10, "huafengSpannable":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 65
    .local v16, "hufengIndex":I
    if-ltz v16, :cond_1

    .line 66
    move/from16 v27, v16

    .line 67
    .local v27, "startHuaFengIndex":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v34

    add-int v6, v27, v34

    .line 68
    .local v6, "endHuaFengIndex":I
    new-instance v34, Landroid/text/style/URLSpan;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x12

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v35

    invoke-virtual {v10, v0, v1, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    new-instance v34, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v35, 0x12

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v35

    invoke-virtual {v10, v0, v1, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 72
    .end local v6    # "endHuaFengIndex":I
    .end local v27    # "startHuaFengIndex":I
    :cond_1
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 75
    const v34, 0x7f100157

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 76
    .local v13, "huafengText2":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    .line 77
    .local v32, "textWithHuafeng2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f090141

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, "huafengstr2":Ljava/lang/String;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v32

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    .local v11, "huafengSpannable2":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 80
    .local v17, "hufengIndex2":I
    if-ltz v17, :cond_2

    .line 81
    move/from16 v28, v17

    .line 82
    .local v28, "startHuaFengIndex2":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v34

    add-int v7, v28, v34

    .line 83
    .local v7, "endHuaFengIndex2":I
    new-instance v34, Landroid/text/style/URLSpan;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x12

    move-object/from16 v0, v34

    move/from16 v1, v28

    move/from16 v2, v35

    invoke-virtual {v11, v0, v1, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 84
    new-instance v34, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v35, 0x12

    move-object/from16 v0, v34

    move/from16 v1, v28

    move/from16 v2, v35

    invoke-virtual {v11, v0, v1, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    .end local v7    # "endHuaFengIndex2":I
    .end local v28    # "startHuaFengIndex2":I
    :cond_2
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    const v34, 0x7f10015c

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 91
    .local v26, "nubiaPrivatePolicyText":Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    .line 92
    .local v33, "textWithNubiaPolicy":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f090144

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 93
    .local v25, "nubiaPolicyStr":Ljava/lang/String;
    new-instance v24, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    .local v24, "nubiaPolicySpannable":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    .line 95
    .local v23, "nubiaPolicyIndex":I
    if-ltz v23, :cond_3

    .line 96
    move/from16 v30, v23

    .line 97
    .local v30, "startNubiaPolicyIndex":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v34

    add-int v9, v30, v34

    .line 98
    .local v9, "endNubiaPolicyIndex":I
    new-instance v34, Landroid/text/style/URLSpan;

    const v35, 0x7f090143

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v35, 0x12

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    new-instance v34, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v35, 0x12

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .end local v9    # "endNubiaPolicyIndex":I
    .end local v30    # "startNubiaPolicyIndex":I
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onBackPressed()V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->finish()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->initActionBar()V

    .line 30
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->initViews()V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/WeatherPrivatePolicyActivity;->finish()V

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 114
    return-void
.end method
