.class Lcn/nubia/camera/multiRecord/g$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1125
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 1126
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_d

    .line 1127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1130
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 1132
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {v3, v1, v1, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    .line 1138
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-gez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/2addr v4, v7

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 1139
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p1

    move v1, v2

    :goto_0
    move p2, v9

    goto/16 :goto_1

    .line 1142
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    .line 1143
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    goto :goto_0

    .line 1146
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v5

    div-int/2addr v2, v7

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    .line 1147
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object p1

    .line 1149
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/au/i;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    move v1, v5

    goto :goto_1

    .line 1151
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v5

    div-int/2addr v2, v7

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 1152
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object p1

    move v1, v7

    goto :goto_0

    .line 1155
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_5

    .line 1156
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    goto :goto_1

    .line 1159
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v5

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_6

    .line 1160
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object p1

    move v1, v6

    goto/16 :goto_0

    :cond_6
    move v1, v8

    goto/16 :goto_0

    .line 1165
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->m:I

    if-ne v0, v8, :cond_7

    .line 1166
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput-object p1, v0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    .line 1167
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->l:F

    .line 1168
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v1, p1, Lcn/nubia/camera/multiRecord/g;->m:I

    goto/16 :goto_2

    .line 1169
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->m:I

    if-ne v0, v1, :cond_8

    .line 1170
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p2, p1, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    iput-object p2, p1, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    .line 1171
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p1, Lcn/nubia/camera/multiRecord/g;->o:F

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->l:F

    .line 1172
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p1, Lcn/nubia/camera/multiRecord/g;->p:I

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->m:I

    .line 1173
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p2, p1, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    iput-object p2, p1, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    .line 1174
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->o:F

    .line 1175
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->p:I

    .line 1176
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    sget-object p2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object p2, p1, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1177
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v9, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1178
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v8, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    goto/16 :goto_2

    .line 1179
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->p:I

    if-ne v0, v8, :cond_9

    .line 1180
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput-object p1, v0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    .line 1181
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->o:F

    .line 1182
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v1, p1, Lcn/nubia/camera/multiRecord/g;->p:I

    goto/16 :goto_2

    .line 1183
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->p:I

    if-ne v0, v1, :cond_a

    .line 1184
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p2, p1, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    iput-object p2, p1, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    .line 1185
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->o:F

    .line 1186
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->p:I

    .line 1187
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    sget-object p2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object p2, p1, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1188
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v9, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1189
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v8, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    goto :goto_2

    .line 1190
    :cond_a
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->s:I

    if-ne v0, v8, :cond_b

    .line 1191
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput-object p1, v0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1192
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1193
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v1, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    goto :goto_2

    .line 1194
    :cond_b
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->s:I

    if-ne v0, v1, :cond_c

    .line 1195
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    sget-object p2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object p2, p1, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1196
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v9, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1197
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v8, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    goto :goto_2

    .line 1199
    :cond_c
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    iput-object v2, v0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    .line 1200
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v2, v0, Lcn/nubia/camera/multiRecord/g;->o:F

    iput v2, v0, Lcn/nubia/camera/multiRecord/g;->l:F

    .line 1201
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v2, v0, Lcn/nubia/camera/multiRecord/g;->p:I

    iput v2, v0, Lcn/nubia/camera/multiRecord/g;->m:I

    .line 1202
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    iput-object v2, v0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v2, v0, Lcn/nubia/camera/multiRecord/g;->r:F

    iput v2, v0, Lcn/nubia/camera/multiRecord/g;->o:F

    .line 1204
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v2, v0, Lcn/nubia/camera/multiRecord/g;->s:I

    iput v2, v0, Lcn/nubia/camera/multiRecord/g;->p:I

    .line 1205
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput-object p1, v0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1206
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput p2, p1, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1207
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iput v1, p1, Lcn/nubia/camera/multiRecord/g;->s:I

    .line 1209
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->c(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/SelectRectView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget p2, p2, Lcn/nubia/camera/multiRecord/g;->m:I

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v0, v0, Lcn/nubia/camera/multiRecord/g;->p:I

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    iget v1, v1, Lcn/nubia/camera/multiRecord/g;->s:I

    invoke-virtual {p1, p2, v0, v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->a(III)V

    .line 1210
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$8;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->c(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/SelectRectView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/SelectRectView;->invalidate()V

    return v6

    :cond_d
    :goto_3
    return v1
.end method
