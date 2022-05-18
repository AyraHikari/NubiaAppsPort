.class public Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/utils/WeatherUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourTempAndWeather"
.end annotation


# static fields
.field public static final SUN_RISE_FLAG:I = 0x0

.field public static final SUN_SET_FLAG:I = 0x1

.field public static final TEMPERATURE:I = -0x1


# instance fields
.field private dateTime:Ljava/lang/String;

.field private epochDateTime:Ljava/util/Date;

.field private mAlarmLevel:Ljava/lang/String;

.field private mAlarmTime:Ljava/lang/String;

.field private mAlarmType:Ljava/lang/String;

.field private mAreaID:Ljava/lang/String;

.field private mDate:Ljava/util/Date;

.field private mDayTemp:Ljava/lang/String;

.field private mDayType:Ljava/lang/String;

.field private mHightLowTemp:Ljava/lang/String;

.field private mIsNight:Z

.field private mNextSunRiseSet:Ljava/util/Date;

.field private mNightTemp:Ljava/lang/String;

.field private mNightType:Ljava/lang/String;

.field private mTemp:Ljava/lang/Integer;

.field private mTodayDayTemp:Ljava/lang/Float;

.field private mTodayFcIndex:I

.field private mTodayNightTemp:Ljava/lang/Float;

.field private mType:Ljava/lang/Integer;

.field private mWindDirectionType:Ljava/lang/String;

.field private mWindForce:Ljava/lang/String;

.field private sunRiseOrSetFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    .line 725
    iput-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    .line 726
    iput v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mIsNight:Z

    .line 744
    iput v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    .line 815
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 2
    .param p1, "mTemp"    # Ljava/lang/Integer;
    .param p2, "mType"    # Ljava/lang/Integer;
    .param p3, "mDate"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    .line 725
    iput-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    .line 726
    iput v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mIsNight:Z

    .line 744
    iput v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    .line 819
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTemp:Ljava/lang/Integer;

    .line 820
    iput-object p2, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mType:Ljava/lang/Integer;

    .line 821
    iput-object p3, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDate:Ljava/util/Date;

    .line 822
    return-void
.end method


# virtual methods
.method public getAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEpochDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->epochDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getNextSunRiseSet()Ljava/util/Date;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNextSunRiseSet:Ljava/util/Date;

    return-object v0
.end method

.method public getSunRiseOrSetFlag()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    return v0
.end method

.method public getmAlarmLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmType:Ljava/lang/String;

    return-object v0
.end method

.method public getmDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getmDayTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmDayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayType:Ljava/lang/String;

    return-object v0
.end method

.method public getmHightLowTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mHightLowTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightType:Ljava/lang/String;

    return-object v0
.end method

.method public getmTemp()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTemp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getmTodayDayTemp()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    return-object v0
.end method

.method public getmTodayFcIndex()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    return v0
.end method

.method public getmTodayNightTemp()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    return-object v0
.end method

.method public getmType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getmWindDirectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindDirectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getmWindForce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindForce:Ljava/lang/String;

    return-object v0
.end method

.method public isIsNight()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mIsNight:Z

    return v0
.end method

.method public setAreaID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAreaID"    # Ljava/lang/String;

    .prologue
    .line 791
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAreaID:Ljava/lang/String;

    .line 792
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 783
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->dateTime:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public setEpochDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "epochDateTime"    # Ljava/util/Date;

    .prologue
    .line 775
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->epochDateTime:Ljava/util/Date;

    .line 776
    return-void
.end method

.method public setIsNight(Z)V
    .locals 0
    .param p1, "isNight"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mIsNight:Z

    .line 760
    return-void
.end method

.method public setNextSunRiseSet(Ljava/util/Date;)V
    .locals 0
    .param p1, "nextSunRiseSet"    # Ljava/util/Date;

    .prologue
    .line 751
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNextSunRiseSet:Ljava/util/Date;

    .line 752
    return-void
.end method

.method public setSunRiseOrSetFlag(I)V
    .locals 0
    .param p1, "sunRiseOrSetFlag"    # I

    .prologue
    .line 767
    iput p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    .line 768
    return-void
.end method

.method public setmAlarmLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmLevel"    # Ljava/lang/String;

    .prologue
    .line 909
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmLevel:Ljava/lang/String;

    .line 910
    return-void
.end method

.method public setmAlarmTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmTime"    # Ljava/lang/String;

    .prologue
    .line 917
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmTime:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public setmAlarmType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmType"    # Ljava/lang/String;

    .prologue
    .line 901
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmType:Ljava/lang/String;

    .line 902
    return-void
.end method

.method public setmDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "mDate"    # Ljava/util/Date;

    .prologue
    .line 869
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDate:Ljava/util/Date;

    .line 870
    return-void
.end method

.method public setmDayTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDayTemp"    # Ljava/lang/String;

    .prologue
    .line 941
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayTemp:Ljava/lang/String;

    .line 942
    return-void
.end method

.method public setmDayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDayType"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayType:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public setmHightLowTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHightLowTemp"    # Ljava/lang/String;

    .prologue
    .line 877
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mHightLowTemp:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setmNightTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNightTemp"    # Ljava/lang/String;

    .prologue
    .line 949
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightTemp:Ljava/lang/String;

    .line 950
    return-void
.end method

.method public setmNightType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNightType"    # Ljava/lang/String;

    .prologue
    .line 933
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightType:Ljava/lang/String;

    .line 934
    return-void
.end method

.method public setmTemp(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mTemp"    # Ljava/lang/Integer;

    .prologue
    .line 853
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTemp:Ljava/lang/Integer;

    .line 854
    return-void
.end method

.method public setmTodayDayTemp(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mTodayDayTemp"    # Ljava/lang/Float;

    .prologue
    .line 829
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    .line 830
    return-void
.end method

.method public setmTodayFcIndex(I)V
    .locals 0
    .param p1, "mTodayFcIndex"    # I

    .prologue
    .line 809
    iput p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    .line 810
    return-void
.end method

.method public setmTodayNightTemp(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mTodayNightTemp"    # Ljava/lang/Float;

    .prologue
    .line 837
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    .line 838
    return-void
.end method

.method public setmType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mType"    # Ljava/lang/Integer;

    .prologue
    .line 861
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mType:Ljava/lang/Integer;

    .line 862
    return-void
.end method

.method public setmWindDirectionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWindDirectionType"    # Ljava/lang/String;

    .prologue
    .line 893
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindDirectionType:Ljava/lang/String;

    .line 894
    return-void
.end method

.method public setmWindForce(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWindForce"    # Ljava/lang/String;

    .prologue
    .line 885
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindForce:Ljava/lang/String;

    .line 886
    return-void
.end method
