.class public Lcn/nubia/analytic/util/CommonInfoFactory;
.super Ljava/lang/Object;
.source "CommonInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static random()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408c200000000000L    # 900.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x64

    .line 106
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitContexts(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/trafficcontrol/bean/ReportInfoBean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 118
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v2, v7

    .line 201
    :goto_0
    return-object v2

    .line 123
    :cond_1
    sget-object v8, Lcn/nubia/analytic/sdk/NubiaConfig;->sAppId:Ljava/lang/String;

    .line 125
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v7

    .line 126
    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/analytic/util/CommonInfoFactory;->random()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 134
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_4

    .line 198
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 199
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, v7

    .line 201
    goto :goto_0

    .line 138
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 140
    add-int v6, v4, v5

    .line 142
    const/16 v4, 0x800

    if-le v5, v4, :cond_a

    .line 144
    div-int/lit16 v4, v5, 0x800

    .line 146
    rem-int/lit16 v5, v5, 0x800

    if-lez v5, :cond_5

    .line 147
    add-int/lit8 v4, v4, 0x1

    .line 149
    :cond_5
    const/4 v5, 0x0

    move/from16 v16, v5

    move v5, v6

    move/from16 v6, v16

    :goto_2
    if-lt v6, v4, :cond_6

    move v4, v5

    .line 137
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 150
    :cond_6
    new-instance v13, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;

    invoke-direct {v13}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;-><init>()V

    .line 151
    invoke-virtual {v13, v9}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setBigDataId(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v13, v8}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setAppId(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v13, v10, v11}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setStartTime(J)V

    .line 154
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setSeqNumber(I)V

    .line 155
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setSlice(I)V

    .line 156
    if-nez v6, :cond_8

    .line 157
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setSlicePos(I)V

    .line 159
    mul-int/lit16 v14, v6, 0x800

    add-int/lit8 v15, v6, 0x1

    .line 160
    mul-int/lit16 v15, v15, 0x800

    .line 158
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setValue(Ljava/lang/String;)V

    .line 171
    :goto_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v13, v4, -0x1

    if-ne v6, v13, :cond_7

    .line 176
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 177
    const/4 v5, 0x0

    .line 149
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 161
    :cond_8
    add-int/lit8 v14, v4, -0x1

    if-ne v6, v14, :cond_9

    .line 162
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setSlicePos(I)V

    .line 164
    mul-int/lit16 v14, v6, 0x800

    .line 163
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 166
    :cond_9
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setSlicePos(I)V

    .line 168
    mul-int/lit16 v14, v6, 0x800

    add-int/lit8 v15, v6, 0x1

    .line 169
    mul-int/lit16 v15, v15, 0x800

    .line 167
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 181
    :cond_a
    new-instance v13, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;

    invoke-direct {v13}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;-><init>()V

    .line 183
    const/16 v4, 0x800

    if-le v6, v4, :cond_b

    .line 184
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move v4, v5

    .line 189
    :goto_5
    invoke-virtual {v13, v9}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setBigDataId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v13, v8}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setAppId(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v13, v10, v11}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setStartTime(J)V

    .line 192
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setSlice(I)V

    .line 193
    invoke-virtual {v13, v2}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->setValue(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    move v4, v6

    goto :goto_5
.end method
