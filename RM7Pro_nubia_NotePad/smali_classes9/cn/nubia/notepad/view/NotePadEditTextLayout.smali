.class public Lcn/nubia/notepad/view/NotePadEditTextLayout;
.super Landroid/widget/LinearLayout;
.source "NotePadEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;,
        Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;
    }
.end annotation


# static fields
.field private static final CHINA_PHONE_NUMBER:Ljava/lang/String; = "(?<!\\d)(?:(?:1[3456789]\\d{9})|(?:861[3456788]\\d{9}))(?!\\d)"

.field private static final CREATE_EVENT:Ljava/lang/String; = "cn.nubia.calendar.otherApp.CREATE_EVENT"

.field private static final DATE:Ljava/util/regex/Pattern;

.field private static final KEY_BEGIN_TIME_IN_MILLIS:Ljava/lang/String; = "begin_time_in_millis"

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_END_TIME_IN_MILLIS:Ljava/lang/String; = "end_time_in_millis"

.field private static final KEY_TIME_IN_MILLIS:Ljava/lang/String; = "time_in_millis"

.field private static final MAX_LENGTH:I = 0x1770

.field private static final MAX_LENGTH_RECORD_FLAG:I = 0x1776

.field private static final MEMU_VIEW_CONTACT:I = 0xb

.field private static final MENU_COPY_TEXT:I = 0x7

.field private static final MENU_DISPALY_IN_CALENDAR:I = 0xa

.field private static final MENU_EMAIL_ADD_CONTACT:I = 0x4

.field private static final MENU_EMAIL_SEND_EMAIL:I = 0x3

.field private static final MENU_NEW_EVENT:I = 0x8

.field private static final MENU_NEW_EVENT_EXACT:I = 0x9

.field private static final MENU_PHONE_ADD_CONTACT:I = 0x2

.field private static final MENU_PHONE_CALL:I = 0x0

.field private static final MENU_PHONE_SEND_MESSAGE:I = 0x1

.field private static final MENU_WEB_ADD_CONTACT:I = 0x6

.field private static final MENU_WEB_OPEN_URL:I = 0x5

.field private static final MENU_WEB_SHARE:I = 0xc

.field private static final TIME:Ljava/util/regex/Pattern;

.field private static final VIEW_DATE:Ljava/lang/String; = "cn.nubia.calendar.otherApp.VIEW_DATE"


# instance fields
.field private isSpanClick:Z

.field public mCheckbox:Landroid/widget/CheckBox;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/String;

.field private mDateCount:I

.field public mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

.field private mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

.field public mModeLayout:Landroid/widget/LinearLayout;

.field private mNoteMode:I

.field private mNotePreMode:I

.field public mNumberTextView:Landroid/widget/TextView;

.field private mPreString:Ljava/lang/String;

.field private mQueryText:Ljava/lang/String;

.field public mShortLineTextView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field public misChecked:Z

.field private previousMovementMethod:Landroid/text/method/MovementMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "(((19[789][0-9]|20[012][0-9]|203[0-7])\u5e74(0[13578]|1[02]|[13578])\u6708(0[1-9]|[12][0-9]|30|31|[1-9])\u65e5)|((19[789][0-9]|20[012][0-9]|203[0-7])\u5e74(0[469]|11|[469])\u6708(0[1-9]|[12][0-9]|30|[1-9])\u65e5)|((19[789][0-9]|20[012][0-9]|203[0-7])\u5e74(02|2)\u6708(0[1-9]|[12][0-9]|[1-9])\u65e5)|((0[123456789]|1[012]|[123456789])\u6708(0[1-9]|[12][0-9]|30|31|[1-9])\u65e5)|((19[789][0-9]|20[012][0-9]|203[0-7])\\.(0[13578]|1[02]|[13578])\\.(0[1-9]|[12][0-9]|30|31|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])\\.(0[469]|11|[469])\\.(0[1-9]|[12][0-9]|30|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])\\.(02|2)\\.(0[1-9]|[12][0-9]|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])\\/(0[13578]|1[02]|[13578])\\/(0[1-9]|[12][0-9]|30|31|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])\\/(0[469]|11|[469])\\/(0[1-9]|[12][0-9]|30|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])\\/(02|2)\\/(0[1-9]|[12][0-9]|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])-(0[13578]|1[02]|[13578])-(0[1-9]|[12][0-9]|30|31|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])-(0[469]|11|[469])-(0[1-9]|[12][0-9]|30|[1-9]))|((19[789][0-9]|20[012][0-9]|203[0-7])-(02|2)-(0[1-9]|[12][0-9]|[1-9]))|((0[13578]|1[02]|[13578])\\.(0[1-9]|[12][0-9]|30|31|[1-9])\\.(19[789][0-9]|20[012][0-9]|203[0-7]))|((0[469]|11|[469])\\.(0[1-9]|[12][0-9]|30|[1-9])\\.(19[789][0-9]|20[012][0-9]|203[0-7]))|((02|2)\\.(0[1-9]|[12][0-9]|[1-9])\\.(19[789][0-9]|20[012][0-9]|203[0-7]))|((0[13578]|1[02]|[13578])\\/(0[1-9]|[12][0-9]|30|31|[1-9])\\/(19[789][0-9]|20[012][0-9]|203[0-7]))|((0[469]|11|[469])\\/(0[1-9]|[12][0-9]|30|[1-9])\\/(19[789][0-9]|20[012][0-9]|203[0-7]))|((02|2)\\/(0[1-9]|[12][0-9]|[1-9])\\/(19[789][0-9]|20[012][0-9]|203[0-7]))|((0[13578]|1[02]|[13578])-(0[1-9]|[12][0-9]|30|31|[1-9])-(19[789][0-9]|20[012][0-9]|203[0-7]))|((0[469]|11|[469])-(0[1-9]|[12][0-9]|30|[1-9])-(19[789][0-9]|20[012][0-9]|203[0-7]))|((02|2)-(0[1-9]|[12][0-9]|[1-9])-(19[789][0-9]|20[012][0-9]|203[0-7])))"

    .line 113
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->DATE:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "(([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6]([0-5][0-9]|[0-9])(\u5206)?)|(([\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341]|\u5341[\u4e00|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]|\u4e8c\u5341|\u4e8c\u5341[\u4e00|\u4e8c|\u4e09])[\u70b9|\u65f6]((([\u4e8c|\u4e09|\u56db|\u4e94])?\u5341([\u4e00|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d])?)|([\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d])|)(\u5206)?)|([\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9([0-5][0-9]|[0-9])(\u5206)?)|(([01][0-9]|2[0-3]|[0-9])[\u70b9|\u65f6])|([\u4e0a\u4e0b]\u5348([01][0-9]|2[0-3]|[0-9])\u70b9)|(([01][0-9]|2[0-3]|[0-9])((\\s*[ap]m)|(\\s*[ap]\\.m\\.)))|(([01][0-9]|2[0-3]|[0-9]):([0-5][0-9]|[0-9])((\\s*[ap]m)|(\\s*[ap]\\.m\\.))?)"

    .line 138
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->TIME:Ljava/util/regex/Pattern;

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mToast:Landroid/widget/Toast;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDate:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDateCount:I

    .line 153
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    .line 155
    return-void
.end method

.method static synthetic access$402(Lcn/nubia/notepad/view/NotePadEditTextLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->isSpanClick:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/notepad/view/NotePadEditTextLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->createOptionMenu(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/notepad/view/NotePadEditTextLayout;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->optionPhoneMenu(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPermissions()V
    .locals 3

    .prologue
    .line 570
    new-instance v0, Lcn/nubia/notepad/utils/CtaPermissionUtils;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    check-cast v1, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/utils/CtaPermissionUtils;-><init>(Landroid/app/Activity;)V

    .line 571
    .local v0, "ctaPermissionUtils":Lcn/nubia/notepad/utils/CtaPermissionUtils;
    const-string v1, "PhoneStateAndContacts"

    new-instance v2, Lcn/nubia/notepad/view/NotePadEditTextLayout$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$1;-><init>(Lcn/nubia/notepad/view/NotePadEditTextLayout;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    .line 579
    return-void
.end method

.method private checkUrlToString(Landroid/text/style/URLSpan;)V
    .locals 3
    .param p1, "url"    # Landroid/text/style/URLSpan;

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "urlString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 469
    const-string v2, "dateto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    iget v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDateCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDateCount:I

    .line 473
    :cond_0
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 475
    .local v0, "start":I
    if-ltz v0, :cond_1

    .line 476
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setDate(Ljava/lang/String;)V

    .line 479
    .end local v0    # "start":I
    :cond_1
    return-void
.end method

.method private clearEditTextThruLine()V
    .locals 5

    .prologue
    .line 294
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v1

    .line 295
    .local v1, "selectPosition":I
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 296
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 297
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->setTextColor(I)V

    .line 299
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createOptionMenu(Ljava/lang/String;)V
    .locals 25
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, "isInDatabase":Z
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v12, v0, [Ljava/lang/CharSequence;

    .line 602
    .local v12, "itemEntries":[Ljava/lang/CharSequence;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v15, "itemValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v19, ""

    .line 604
    .local v19, "mTime":Ljava/lang/String;
    const-string v20, "NotePadEditTextLayout"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "createOptionMenu() url = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget-object v20, Lcn/nubia/notepad/view/NotePadEditTextLayout;->TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDateCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 606
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDate:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 607
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0084

    .line 608
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0083

    .line 609
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0081

    .line 610
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    .line 612
    .local v8, "itemDateEntries":[Ljava/lang/CharSequence;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 616
    .local v9, "itemDateValues":[I
    move-object v12, v8

    .line 617
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 618
    aget v20, v9, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 620
    .end local v6    # "i":I
    .end local v8    # "itemDateEntries":[Ljava/lang/CharSequence;
    .end local v9    # "itemDateValues":[I
    :cond_0
    sget-object v20, Lcn/nubia/notepad/view/NotePadEditTextLayout;->DATE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-nez v20, :cond_1

    sget-object v20, Lcn/nubia/notepad/view/NotePadEditTextLayout;->TIME:Ljava/util/regex/Pattern;

    .line 621
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDateCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 622
    :cond_1
    move-object/from16 v19, p1

    .line 623
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0084

    .line 624
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0083

    .line 625
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0081

    .line 626
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v20

    .line 628
    .restart local v8    # "itemDateEntries":[Ljava/lang/CharSequence;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v9, v0, [I

    fill-array-data v9, :array_1

    .line 632
    .restart local v9    # "itemDateValues":[I
    move-object v12, v8

    .line 633
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 634
    aget v20, v9, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 636
    .end local v6    # "i":I
    .end local v8    # "itemDateEntries":[Ljava/lang/CharSequence;
    .end local v9    # "itemDateValues":[I
    :cond_2
    sget-object v20, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "(?<!\\d)(?:(?:1[3456789]\\d{9})|(?:861[3456788]\\d{9}))(?!\\d)"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 637
    :cond_3
    invoke-static {}, Lcn/nubia/notepad/utils/ContactInfos;->getInstance()Lcn/nubia/notepad/utils/ContactInfos;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/utils/ContactInfos;->isPhoneExistInDataBase(Ljava/lang/String;)Z

    move-result v7

    .line 639
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0080

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    .line 640
    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0087

    .line 641
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0081

    .line 642
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v20

    const/16 v21, 0x3

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7f0a0088

    .line 644
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 646
    :goto_2
    aput-object v20, v13, v21

    .line 648
    .local v13, "itemPhoneEntries":[Ljava/lang/CharSequence;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v14, v0, [I

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v14, v20

    const/16 v20, 0x1

    const/16 v21, 0x1

    aput v21, v14, v20

    const/16 v20, 0x2

    const/16 v21, 0x7

    aput v21, v14, v20

    const/16 v21, 0x3

    if-eqz v7, :cond_5

    const/16 v20, 0xb

    :goto_3
    aput v20, v14, v21

    .line 653
    .local v14, "itemPhoneValues":[I
    move-object v12, v13

    .line 654
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 655
    aget v20, v14, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 644
    .end local v6    # "i":I
    .end local v13    # "itemPhoneEntries":[Ljava/lang/CharSequence;
    .end local v14    # "itemPhoneValues":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7f0a007f

    .line 646
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 648
    .restart local v13    # "itemPhoneEntries":[Ljava/lang/CharSequence;
    :cond_5
    const/16 v20, 0x2

    goto :goto_3

    .line 657
    .end local v13    # "itemPhoneEntries":[Ljava/lang/CharSequence;
    :cond_6
    sget-object v20, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 658
    invoke-static {}, Lcn/nubia/notepad/utils/ContactInfos;->getInstance()Lcn/nubia/notepad/utils/ContactInfos;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/utils/ContactInfos;->isEmailExistInDataBase(Ljava/lang/String;)Z

    move-result v7

    .line 660
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/CharSequence;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0086

    .line 661
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v20

    const/16 v21, 0x1

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7f0a0088

    .line 663
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 665
    :goto_5
    aput-object v20, v10, v21

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0081

    .line 666
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v10, v20

    .line 668
    .local v10, "itemEmailEntries":[Ljava/lang/CharSequence;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v11, v0, [I

    const/16 v20, 0x0

    const/16 v21, 0x3

    aput v21, v11, v20

    const/16 v21, 0x1

    if-eqz v7, :cond_8

    const/16 v20, 0xb

    :goto_6
    aput v20, v11, v21

    const/16 v20, 0x2

    const/16 v21, 0x7

    aput v21, v11, v20

    .line 672
    .local v11, "itemEmailValues":[I
    move-object v12, v10

    .line 673
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 674
    aget v20, v11, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 663
    .end local v6    # "i":I
    .end local v10    # "itemEmailEntries":[Ljava/lang/CharSequence;
    .end local v11    # "itemEmailValues":[I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7f0a007f

    .line 665
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 668
    .restart local v10    # "itemEmailEntries":[Ljava/lang/CharSequence;
    :cond_8
    const/16 v20, 0x4

    goto :goto_6

    .line 676
    .end local v10    # "itemEmailEntries":[Ljava/lang/CharSequence;
    :cond_9
    sget-object v20, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 677
    invoke-static {}, Lcn/nubia/notepad/utils/ContactInfos;->getInstance()Lcn/nubia/notepad/utils/ContactInfos;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/utils/ContactInfos;->isWebUrlExistInDataBase(Ljava/lang/String;)Z

    move-result v7

    .line 679
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0085

    .line 680
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v16, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a0081

    .line 681
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v16, v20

    const/16 v21, 0x2

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7f0a0088

    .line 683
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 685
    :goto_8
    aput-object v20, v16, v21

    const/16 v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0a009c

    .line 686
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v16, v20

    .line 688
    .local v16, "itemWebEntries":[Ljava/lang/CharSequence;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const/16 v21, 0x5

    aput v21, v17, v20

    const/16 v20, 0x1

    const/16 v21, 0x7

    aput v21, v17, v20

    const/16 v21, 0x2

    if-eqz v7, :cond_b

    const/16 v20, 0xb

    :goto_9
    aput v20, v17, v21

    const/16 v20, 0x3

    const/16 v21, 0xc

    aput v21, v17, v20

    .line 692
    .local v17, "itemWebValues":[I
    move-object/from16 v12, v16

    .line 693
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 694
    aget v20, v17, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 683
    .end local v6    # "i":I
    .end local v16    # "itemWebEntries":[Ljava/lang/CharSequence;
    .end local v17    # "itemWebValues":[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7f0a007f

    .line 685
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_8

    .line 688
    .restart local v16    # "itemWebEntries":[Ljava/lang/CharSequence;
    :cond_b
    const/16 v20, 0x6

    goto :goto_9

    .line 700
    .end local v16    # "itemWebEntries":[Ljava/lang/CharSequence;
    .restart local v6    # "i":I
    :cond_c
    move-object/from16 v18, v19

    .line 703
    .local v18, "mCalendarTime":Ljava/lang/String;
    new-instance v5, Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 704
    .local v5, "builer":Lcn/nubia/commonui/app/AlertDialog$Builder;
    new-instance v20, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v15, v2, v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout$2;-><init>(Lcn/nubia/notepad/view/NotePadEditTextLayout;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v12, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 712
    const/high16 v20, 0x1040000

    new-instance v21, Lcn/nubia/notepad/view/NotePadEditTextLayout$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextLayout$3;-><init>(Lcn/nubia/notepad/view/NotePadEditTextLayout;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 719
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    .line 720
    .local v4, "alertDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 721
    invoke-direct/range {p0 .. p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->checkPermissions()V

    .line 722
    .end local v4    # "alertDialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v5    # "builer":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v6    # "i":I
    .end local v18    # "mCalendarTime":Ljava/lang/String;
    :cond_d
    return-void

    .line 612
    nop

    :array_0
    .array-data 4
        0x9
        0xa
        0x7
    .end array-data

    .line 628
    :array_1
    .array-data 4
        0x8
        0xa
        0x7
    .end array-data
.end method

.method private doCopyText(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 825
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    .line 826
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 827
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    const/4 v2, 0x0

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 828
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0082

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 830
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 833
    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0a003b

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 834
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private isDate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x0

    .line 424
    :goto_0
    return v1

    .line 423
    :cond_0
    sget-object v1, Lcn/nubia/notepad/view/NotePadEditTextLayout;->DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 424
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private matchChinaPhoneNumber(Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .param p1, "style"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 399
    const-string v6, "(?<!\\d)(?:(?:1[3456789]\\d{9})|(?:861[3456788]\\d{9}))(?!\\d)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 400
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 401
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 402
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 403
    .local v4, "start":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 404
    .local v1, "ends":I
    new-instance v5, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s*|\t*|\r*|\n*"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;-><init>(Ljava/lang/String;Lcn/nubia/notepad/view/NotePadEditTextLayout;)V

    .line 406
    .local v5, "urlSpan":Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;
    const/16 v6, 0x21

    :try_start_0
    invoke-virtual {p1, v5, v4, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ends":I
    .end local v4    # "start":I
    .end local v5    # "urlSpan":Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;
    :cond_0
    return-void
.end method

.method private optionPhoneMenu(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "itemId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;

    .prologue
    const/high16 v7, 0x20000

    const/high16 v5, 0x80000

    .line 727
    const/4 v2, 0x0

    .line 728
    .local v2, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 808
    :goto_0
    if-eqz v2, :cond_0

    .line 809
    invoke-direct {p0, v2}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->startActivity(Landroid/content/Intent;)V

    .line 811
    :cond_0
    return-void

    .line 730
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 731
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 734
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 735
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 737
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 738
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 739
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 741
    :pswitch_3
    const-string v3, "http://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "rtsp://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://"

    .line 742
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 745
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 746
    .restart local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 754
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 756
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 760
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 762
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 765
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "website:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 767
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 770
    :pswitch_7
    invoke-direct {p0, p2}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->doCopyText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 773
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.calendar.otherApp.CREATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "begin_time_in_millis"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "end_time_in_millis"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v3, :cond_2

    .line 777
    const-string v3, "description"

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v4}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->getNotesText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    :cond_2
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 782
    :pswitch_9
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.calendar.otherApp.CREATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "begin_time_in_millis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "end_time_in_millis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 784
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v3, :cond_3

    .line 786
    const-string v3, "description"

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v4}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->getNotesText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    :cond_3
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 791
    :pswitch_a
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "cn.nubia.calendar.otherApp.VIEW_DATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "time_in_millis"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 796
    :pswitch_b
    invoke-static {}, Lcn/nubia/notepad/utils/ContactInfos;->getInstance()Lcn/nubia/notepad/utils/ContactInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/notepad/utils/ContactInfos;->getCurContactId()J

    move-result-wide v0

    .line 797
    .local v0, "contactId":J
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 799
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 802
    .end local v0    # "contactId":J
    :pswitch_c
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcn/nubia/notepad/utils/Util;->shareNoteText(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private setDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->isDate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mDate:Ljava/lang/String;

    .line 416
    :cond_0
    return-void
.end method

.method private setDefaultMode()V
    .locals 3

    .prologue
    const v2, 0x7f0e00fc

    .line 207
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 208
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 209
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 210
    return-void
.end method

.method private setEditTextThruLine()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 309
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 310
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setTextColor(I)V

    .line 312
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 314
    return-void
.end method

.method private setModeLayoutHeight()V
    .locals 8

    .prologue
    const v7, 0x7f0c0063

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 839
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 841
    .local v0, "end":I
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 843
    .local v2, "top":I
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 844
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    if-ne v3, v6, :cond_1

    .line 845
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 852
    :cond_0
    :goto_0
    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 853
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    iget v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    iput v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNotePreMode:I

    .line 856
    return-void

    .line 847
    :cond_1
    iget v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNotePreMode:I

    if-ne v3, v6, :cond_0

    .line 849
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    goto :goto_0
.end method

.method private setModeViewVisible(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->clearEditTextThruLine()V

    .line 218
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setDefaultMode()V

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setModeLayoutHeight()V

    .line 291
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    goto :goto_0

    .line 253
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 258
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    .line 259
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 262
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 270
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    .line 276
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 279
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    iput-boolean v2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    .line 285
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setTitleMode()V

    goto/16 :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setTitleMode()V
    .locals 3

    .prologue
    const v2, 0x7f0e00fb

    .line 201
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 203
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 204
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00a2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 819
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const v7, 0x7f0a0030

    .line 880
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v5}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->getTextTotal()I

    move-result v4

    .line 881
    .local v4, "total":I
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v2

    .line 882
    .local v2, "selectionStart":I
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionEnd()I

    move-result v1

    .line 883
    .local v1, "selectionEnd":I
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5, p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 884
    const/16 v5, 0x1770

    if-le v4, v5, :cond_1

    if-eqz v1, :cond_1

    .line 885
    add-int/lit16 v5, v4, -0x1770

    sub-int v3, v2, v5

    .line 886
    .local v3, "start":I
    if-gez v3, :cond_0

    .line 905
    .end local v3    # "start":I
    :goto_0
    return-void

    .line 890
    .restart local v3    # "start":I
    :cond_0
    :try_start_0
    invoke-interface {p1, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_1
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mToast:Landroid/widget/Toast;

    if-nez v5, :cond_2

    .line 895
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    .line 896
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 895
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mToast:Landroid/widget/Toast;

    .line 901
    :goto_2
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 902
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 904
    .end local v3    # "start":I
    :cond_1
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5, p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 891
    .restart local v3    # "start":I
    :catch_0
    move-exception v0

    .line 892
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 899
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mToast:Landroid/widget/Toast;

    iget-object v6, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v3, -0x1

    .line 861
    iget v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    if-nez v1, :cond_2

    .line 862
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "currentString":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mPreString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v1, :cond_2

    .line 864
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mPreString:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mPreString:Ljava/lang/String;

    const-string v2, "\n"

    .line 865
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 866
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v1}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->updateNumberModeView()V

    .line 870
    .end local v0    # "currentString":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mPreString:Ljava/lang/String;

    .line 871
    return-void
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    return v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    return v0
.end method

.method public initView(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;)Landroid/view/View;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "isPreview"    # Z
    .param p4, "noteMode"    # I
    .param p5, "checked"    # Ljava/lang/String;
    .param p6, "listener"    # Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f007f

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/view/NotePadEditTextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 165
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1, p6}, Lcn/nubia/notepad/view/NotePadEditTextView;->setActivity(Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;)V

    .line 166
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1, p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1, p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    const v1, 0x7f0f007c

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    .line 171
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v1, 0x7f0f003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    .line 173
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    .line 175
    const v1, 0x7f0f007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0, p3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setPreviewMode(Z)V

    .line 177
    iput p4, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    .line 178
    const-string v1, "1"

    invoke-static {p5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    .line 179
    invoke-virtual {p0, p4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    .line 180
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 464
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_0
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 434
    check-cast v0, Landroid/widget/CheckBox;

    .line 440
    .end local p1    # "view":Landroid/view/View;
    .local v0, "cb":Landroid/widget/CheckBox;
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_2
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v3, :cond_0

    .line 449
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v3}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->needSaveNote()V

    goto :goto_0

    .line 436
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    check-cast p1, Landroid/widget/LinearLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0    # "cb":Landroid/widget/CheckBox;
    goto :goto_1

    .line 443
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 454
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "view":Landroid/view/View;
    :sswitch_1
    iget-boolean v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->isSpanClick:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v3, :cond_3

    .line 455
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    iget-object v4, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-interface {v3, v4}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->getChildViewIndex(Landroid/view/View;)I

    move-result v2

    .line 456
    .local v2, "index":I
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v3, v5, v2}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->setPreviewMode(ZI)V

    .line 458
    .end local v2    # "index":I
    :cond_3
    iput-boolean v5, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->isSpanClick:Z

    goto :goto_0

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f003b -> :sswitch_0
        0x7f0f007c -> :sswitch_0
        0x7f0f007f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/NotePadEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 913
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 914
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 876
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    .line 195
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setEditMode(I)V
    .locals 1
    .param p1, "noteMode"    # I

    .prologue
    .line 188
    iput p1, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNoteMode:I

    .line 189
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setEditMode(I)V

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setModeViewVisible(I)V

    .line 191
    return-void
.end method

.method public setNumberModeNumberShow(I)V
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public setPreviewMode(Z)V
    .locals 15
    .param p1, "isPreview"    # Z

    .prologue
    .line 321
    if-eqz p1, :cond_3

    .line 322
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/16 v11, 0x3f

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setAutoLinkMask(I)V

    .line 323
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setFocusable(Z)V

    .line 324
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setFocusableInTouchMode(Z)V

    .line 325
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->clearFocus()V

    .line 326
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setCursorVisible(Z)V

    .line 330
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 332
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 333
    .local v1, "end":I
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 334
    .local v2, "sp":Landroid/text/Spannable;
    const/4 v10, 0x0

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v2, v10, v1, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 335
    .local v9, "urls":[Landroid/text/style/URLSpan;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 336
    .local v4, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 337
    array-length v11, v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v6, v9, v10

    .line 338
    .local v6, "url":Landroid/text/style/URLSpan;
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 339
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 338
    invoke-interface {v5, v12, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 339
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "urlString":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->checkUrlToString(Landroid/text/style/URLSpan;)V

    .line 341
    new-instance v7, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;

    invoke-direct {v7, v8, p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;-><init>(Ljava/lang/String;Lcn/nubia/notepad/view/NotePadEditTextLayout;)V

    .line 343
    .local v7, "urlSpan":Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;
    :try_start_0
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 344
    invoke-interface {v2, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    const/16 v14, 0x21

    .line 343
    invoke-virtual {v4, v7, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "url":Landroid/text/style/URLSpan;
    .end local v7    # "urlSpan":Lcn/nubia/notepad/view/NotePadEditTextLayout$NotePadUrlSpan;
    .end local v8    # "urlString":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->matchChinaPhoneNumber(Landroid/text/SpannableStringBuilder;)V

    .line 351
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 352
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 353
    .local v3, "startIndex":I
    :goto_2
    const/4 v10, -0x1

    if-eq v3, v10, :cond_1

    .line 355
    :try_start_1
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContext:Landroid/content/Context;

    .line 356
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0085

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    .line 358
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    const/16 v12, 0x21

    .line 355
    invoke-virtual {v4, v10, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 360
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    iget-object v12, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mQueryText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_2

    .line 361
    :catch_1
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "startIndex":I
    :cond_1
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10, v4}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->previousMovementMethod:Landroid/text/method/MovementMethod;

    .line 369
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    new-instance v11, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;

    invoke-direct {v11, p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout$LocalLinkMovementMethod;-><init>(Landroid/view/View;)V

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 397
    .end local v1    # "end":I
    .end local v2    # "sp":Landroid/text/Spannable;
    .end local v4    # "style":Landroid/text/SpannableStringBuilder;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v9    # "urls":[Landroid/text/style/URLSpan;
    :cond_2
    :goto_3
    return-void

    .line 371
    :cond_3
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setAutoLinkMask(I)V

    .line 372
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setFocusable(Z)V

    .line 373
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setFocusableInTouchMode(Z)V

    .line 374
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setCursorVisible(Z)V

    .line 375
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :try_start_2
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v10}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->getFoucusView()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_5

    .line 378
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 379
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mContent:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 393
    :cond_4
    :goto_4
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->previousMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v10, :cond_2

    .line 394
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->previousMovementMethod:Landroid/text/method/MovementMethod;

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_3

    .line 380
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getOffset()I

    move-result v10

    if-ltz v10, :cond_4

    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 381
    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getOffset()I

    move-result v10

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 382
    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    if-gt v10, v11, :cond_4

    .line 383
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 384
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v11, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->getOffset()I

    move-result v11

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 385
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v10}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->isSoftKeyBoardShow()Z

    move-result v10

    if-nez v10, :cond_4

    .line 386
    iget-object v10, p0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mLayoutListener:Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;

    invoke-interface {v10}, Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;->showKeyBorad()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 390
    :catch_2
    move-exception v0

    .line 391
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
